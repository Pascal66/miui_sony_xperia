.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$MIUITheme;
    }
.end annotation


# static fields
.field public static final sCookieTypeFramework:I = 0x1

.field public static final sCookieTypeMiui:I = 0x2

.field public static final sCookieTypeOther:I = 0x3


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookieType:Landroid/util/SparseIntArray;

.field private mHasValues:Z

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 249
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/MiuiResources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getCookieType(I)I
    .locals 3
    .parameter "cookie"

    .prologue
    .line 252
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 253
    .local v1, type:I
    if-nez v1, :cond_0

    .line 254
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, name:Ljava/lang/String;
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v1, 0x1

    .line 264
    :goto_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCookieType:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return v1

    .line 258
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    const-string v2, "/system/framework/framework-miui-res.apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const/4 v1, 0x2

    goto :goto_0

    .line 262
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "array"

    .prologue
    .line 196
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v5, :cond_1

    .line 212
    :cond_0
    return-object p1

    .line 198
    :cond_1
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 199
    .local v0, data:[I
    const/4 v2, 0x0

    .line 200
    .local v2, index:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 201
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 202
    .local v4, type:I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 203
    .local v1, id:I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 205
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 206
    .local v3, themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 207
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 210
    .end local v3           #themeInteger:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 211
    goto :goto_0
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 50
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 53
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"
    .parameter "def"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 62
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0       #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 231
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    .line 234
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 235
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 236
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, value:Ljava/lang/CharSequence;
    goto :goto_0

    .line 239
    .end local v1           #value:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 240
    .restart local v1       #value:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .parameter "id"

    .prologue
    .line 216
    iget-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    .line 219
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 220
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 221
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, value:Ljava/lang/Integer;
    goto :goto_0

    .line 224
    .end local v1           #value:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 225
    .restart local v1       #value:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 68
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    .local v0, themeInteger:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 75
    .end local v0           #themeInteger:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "miui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/Resources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    .line 189
    :goto_0
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 190
    return-void

    .line 187
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "value"
    .parameter "id"

    .prologue
    .line 128
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, file:Ljava/lang/String;
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v6}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 133
    .local v2, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_3

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    iget v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v5, :cond_1

    iget v5, p1, Landroid/util/TypedValue;->density:I

    const v6, 0xffff

    if-eq v5, v6, :cond_1

    .line 137
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 140
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_2
    iget-object v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-static {p0, p1, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    const-string v5, ".9.png"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v0, Landroid/graphics/drawable/NinePatchDrawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_2

    .line 142
    const/4 v0, 0x0

    .line 147
    :cond_2
    :goto_1
    :try_start_3
    iget-object v5, v2, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v5

    goto :goto_0

    .line 152
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 144
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/content/res/MiuiResources$MIUITheme;

    invoke-direct {v0, p0}, Landroid/content/res/MiuiResources$MIUITheme;-><init>(Landroid/content/res/MiuiResources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 113
    invoke-virtual {p0, p1, p2, v4}, Landroid/content/res/MiuiResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 114
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, file:Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v3}, Landroid/content/res/MiuiResources;->getCookieType(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 116
    .local v1, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v1, :cond_0

    .line 117
    iget-object v2, v1, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 123
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v2

    .line 120
    .restart local v0       #file:Ljava/lang/String;
    .restart local v1       #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_0
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 160
    .local v1, currentConfig:Landroid/content/res/Configuration;
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 162
    .local v0, configChanges:I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 164
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_2

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_0

    invoke-static {v0}, Lmiui/content/res/ExtraConfiguration;->needNewResources(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    :cond_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    .line 171
    :cond_1
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 172
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 173
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 175
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()Z

    .line 176
    iget-object v2, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->hasValues()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/res/MiuiResources;->mHasValues:Z

    .line 178
    :cond_2
    return-void

    .line 160
    .end local v0           #configChanges:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
