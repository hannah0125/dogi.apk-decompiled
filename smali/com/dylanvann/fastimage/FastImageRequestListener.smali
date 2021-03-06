.class public Lcom/dylanvann/fastimage/FastImageRequestListener;
.super Ljava/lang/Object;
.source "FastImageRequestListener.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field static final REACT_ON_ERROR_EVENT:Ljava/lang/String; = "onFastImageError"

.field static final REACT_ON_LOAD_END_EVENT:Ljava/lang/String; = "onFastImageLoadEnd"

.field static final REACT_ON_LOAD_EVENT:Ljava/lang/String; = "onFastImageLoad"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dylanvann/fastimage/FastImageRequestListener;->key:Ljava/lang/String;

    return-void
.end method

.method private static mapFromResource(Landroid/graphics/drawable/Drawable;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 27
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const-string v1, "height"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/dylanvann/fastimage/FastImageRequestListener;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/dylanvann/fastimage/FastImageOkHttpProgressGlideModule;->forget(Ljava/lang/String;)V

    .line 36
    instance-of p1, p3, Lcom/bumptech/glide/request/target/ImageViewTarget;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 39
    :cond_0
    check-cast p3, Lcom/bumptech/glide/request/target/ImageViewTarget;

    invoke-virtual {p3}, Lcom/bumptech/glide/request/target/ImageViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/dylanvann/fastimage/FastImageViewWithUrl;

    .line 40
    invoke-virtual {p1}, Lcom/dylanvann/fastimage/FastImageViewWithUrl;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 41
    const-class p4, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p3, p4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 42
    invoke-virtual {p1}, Lcom/dylanvann/fastimage/FastImageViewWithUrl;->getId()I

    move-result p1

    .line 43
    new-instance p4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v0, "onFastImageError"

    invoke-interface {p3, p1, v0, p4}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 44
    new-instance p4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v0, "onFastImageLoadEnd"

    invoke-interface {p3, p1, v0, p4}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return p2
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 50
    instance-of p2, p3, Lcom/bumptech/glide/request/target/ImageViewTarget;

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 53
    :cond_0
    check-cast p3, Lcom/bumptech/glide/request/target/ImageViewTarget;

    invoke-virtual {p3}, Lcom/bumptech/glide/request/target/ImageViewTarget;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/dylanvann/fastimage/FastImageViewWithUrl;

    .line 54
    invoke-virtual {p2}, Lcom/dylanvann/fastimage/FastImageViewWithUrl;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 55
    const-class p5, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p3, p5}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 56
    invoke-virtual {p2}, Lcom/dylanvann/fastimage/FastImageViewWithUrl;->getId()I

    move-result p2

    .line 57
    invoke-static {p1}, Lcom/dylanvann/fastimage/FastImageRequestListener;->mapFromResource(Landroid/graphics/drawable/Drawable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p5, "onFastImageLoad"

    invoke-interface {p3, p2, p5, p1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 58
    new-instance p1, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string p5, "onFastImageLoadEnd"

    invoke-interface {p3, p2, p5, p1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return p4
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/dylanvann/fastimage/FastImageRequestListener;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
