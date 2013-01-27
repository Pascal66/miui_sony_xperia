.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "proxy"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 99
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method public static final getAndroidProxySelectorRoutePlanner(Landroid/content/Context;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3
    .parameter "context"

    .prologue
    .line 321
    new-instance v0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V

    .line 323
    .local v0, ret:Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    return-object v0
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, host:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 185
    .end local v0           #host:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 197
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 201
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 199
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_0
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 149
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move-object v2, v3

    .line 153
    :goto_0
    return-object v2

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 153
    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, -0x1

    .line 165
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 166
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 170
    :goto_0
    return v2

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 170
    goto :goto_0
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 3
    .parameter "context"
    .parameter "url"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 221
    invoke-static {p0, p1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 222
    .local v0, prefProxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 226
    .local v1, sa:Ljava/net/InetSocketAddress;
    invoke-static {v1}, Landroid/net/ExtraProxy;->getPreferredHttpHost(Ljava/net/InetSocketAddress;)Lorg/apache/http/HttpHost;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 4
    .parameter "ctx"
    .parameter "url"

    .prologue
    .line 113
    const-string v0, ""

    .line 114
    .local v0, host:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 115
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 116
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 119
    .end local v2           #uri:Ljava/net/URI;
    :cond_0
    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 120
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 121
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 124
    :cond_1
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_2

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 134
    :goto_0
    return-object v3

    .line 126
    :cond_2
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 128
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1, v0}, Landroid/net/ProxyProperties;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    invoke-virtual {v1}, Landroid/net/ProxyProperties;->makeProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0

    .line 134
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_3
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 3
    .parameter "host"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 231
    if-nez p0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    if-eqz p0, :cond_0

    .line 236
    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 237
    goto :goto_0

    .line 239
    :cond_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 240
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, host:Ljava/lang/String;
    const/4 v2, 0x0

    .line 330
    .local v2, port:Ljava/lang/String;
    const/4 v0, 0x0

    .line 331
    .local v0, exclList:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    invoke-static {v1, v2, v0}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 341
    if-eqz p2, :cond_0

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 343
    :cond_0
    if-eqz p0, :cond_1

    .line 344
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    :goto_0
    if-eqz p1, :cond_2

    .line 351
    const-string v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    const-string v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    :goto_1
    if-eqz p2, :cond_3

    .line 358
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    :goto_2
    return-void

    .line 347
    :cond_1
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_2
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 361
    :cond_3
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 253
    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 254
    .local v2, match:Ljava/util/regex/Matcher;
    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 256
    .local v1, listMatch:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 264
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 265
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 268
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 270
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 272
    :cond_3
    const/4 v3, -0x1

    .line 274
    .local v3, portVal:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 278
    if-lez v3, :cond_4

    const v4, 0xffff

    if-le v3, v4, :cond_5

    .line 279
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 282
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #portVal:I
    :cond_5
    return-void
.end method
