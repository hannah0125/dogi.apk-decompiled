.class Lcom/dylanvann/fastimage/FastImageViewConverter;
.super Ljava/lang/Object;
.source "FastImageViewConverter.java"


# static fields
.field private static final FAST_IMAGE_CACHE_CONTROL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dylanvann/fastimage/FastImageCacheControl;",
            ">;"
        }
    .end annotation
.end field

.field private static final FAST_IMAGE_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private static final FAST_IMAGE_RESIZE_MODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView$ScaleType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Lcom/dylanvann/fastimage/FastImageViewConverter$1;

    invoke-direct {v0}, Lcom/dylanvann/fastimage/FastImageViewConverter$1;-><init>()V

    sput-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_CACHE_CONTROL_MAP:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/dylanvann/fastimage/FastImageViewConverter$2;

    invoke-direct {v0}, Lcom/dylanvann/fastimage/FastImageViewConverter$2;-><init>()V

    sput-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_PRIORITY_MAP:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/dylanvann/fastimage/FastImageViewConverter$3;

    invoke-direct {v0}, Lcom/dylanvann/fastimage/FastImageViewConverter$3;-><init>()V

    sput-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_RESIZE_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCacheControl(Lcom/facebook/react/bridge/ReadableMap;)Lcom/dylanvann/fastimage/FastImageCacheControl;
    .locals 3

    .line 130
    sget-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_CACHE_CONTROL_MAP:Ljava/util/Map;

    const-string v1, "cache"

    const-string v2, "immutable"

    invoke-static {v1, v2, v0, p0}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getValueFromSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dylanvann/fastimage/FastImageCacheControl;

    return-object p0
.end method

.method static getHeaders(Lcom/facebook/react/bridge/ReadableMap;)Lcom/bumptech/glide/load/model/Headers;
    .locals 4

    .line 67
    sget-object v0, Lcom/bumptech/glide/load/model/Headers;->DEFAULT:Lcom/bumptech/glide/load/model/Headers;

    const-string v1, "headers"

    .line 69
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    .line 71
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 74
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static getImageSource(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Lcom/dylanvann/fastimage/FastImageSource;
    .locals 2

    .line 63
    new-instance v0, Lcom/dylanvann/fastimage/FastImageSource;

    const-string/jumbo v1, "uri"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getHeaders(Lcom/facebook/react/bridge/ReadableMap;)Lcom/bumptech/glide/load/model/Headers;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/dylanvann/fastimage/FastImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    return-object v0
.end method

.method static getOptions(Landroid/content/Context;Lcom/dylanvann/fastimage/FastImageSource;Lcom/facebook/react/bridge/ReadableMap;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 6

    .line 89
    invoke-static {p2}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getPriority(Lcom/facebook/react/bridge/ReadableMap;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    .line 91
    invoke-static {p2}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getCacheControl(Lcom/facebook/react/bridge/ReadableMap;)Lcom/dylanvann/fastimage/FastImageCacheControl;

    move-result-object p2

    .line 92
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const/4 v2, 0x0

    .line 93
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 95
    sget-object v3, Lcom/dylanvann/fastimage/FastImageViewConverter$4;->$SwitchMap$com$dylanvann$fastimage$FastImageCacheControl:[I

    invoke-virtual {p2}, Lcom/dylanvann/fastimage/FastImageCacheControl;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    move-object p2, v2

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    move-object v5, v2

    move-object v2, p2

    move-object p2, v5

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 99
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 109
    :goto_0
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 110
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 112
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 113
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->TRANSPARENT_DRAWABLE:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 116
    invoke-virtual {p1}, Lcom/dylanvann/fastimage/FastImageSource;->isResource()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/request/RequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    :cond_2
    return-object p2
.end method

.method private static getPriority(Lcom/facebook/react/bridge/ReadableMap;)Lcom/bumptech/glide/Priority;
    .locals 3

    .line 134
    sget-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "priority"

    const-string v2, "normal"

    invoke-static {v1, v2, v0, p0}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getValueFromSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/Priority;

    return-object p0
.end method

.method static getScaleType(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 3

    .line 138
    sget-object v0, Lcom/dylanvann/fastimage/FastImageViewConverter;->FAST_IMAGE_RESIZE_MODE_MAP:Ljava/util/Map;

    const-string v1, "resizeMode"

    const-string v2, "cover"

    invoke-static {v1, v2, v0, p0}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method private static getValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    .line 143
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 145
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FastImage, invalid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getValueFromSource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/react/bridge/ReadableMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 152
    :try_start_0
    invoke-interface {p3, p0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/facebook/react/bridge/NoSuchKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/dylanvann/fastimage/FastImageViewConverter;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
