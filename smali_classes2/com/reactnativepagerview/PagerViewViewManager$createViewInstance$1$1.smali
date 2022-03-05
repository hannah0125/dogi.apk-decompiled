.class public final Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PagerViewViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "react-native-pager-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;


# direct methods
.method constructor <init>(Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "settling"

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported pageScrollState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    const-string p1, "dragging"

    goto :goto_0

    :cond_2
    const-string p1, "idle"

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object v0, v0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    invoke-static {v0}, Lcom/reactnativepagerview/PagerViewViewManager;->access$getEventDispatcher$p(Lcom/reactnativepagerview/PagerViewViewManager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/reactnativepagerview/event/PageScrollStateChangedEvent;

    iget-object v2, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object v2, v2, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/reactnativepagerview/event/PageScrollStateChangedEvent;-><init>(ILjava/lang/String;)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 56
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 38
    iget-object p3, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object p3, p3, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    invoke-static {p3}, Lcom/reactnativepagerview/PagerViewViewManager;->access$getEventDispatcher$p(Lcom/reactnativepagerview/PagerViewViewManager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p3

    .line 39
    new-instance v0, Lcom/reactnativepagerview/event/PageScrollEvent;

    iget-object v1, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object v1, v1, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/reactnativepagerview/event/PageScrollEvent;-><init>(IIF)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    .line 38
    invoke-interface {p3, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 44
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object v0, v0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    invoke-static {v0}, Lcom/reactnativepagerview/PagerViewViewManager;->access$getEventDispatcher$p(Lcom/reactnativepagerview/PagerViewViewManager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/reactnativepagerview/event/PageSelectedEvent;

    iget-object v2, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;

    iget-object v2, v2, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/reactnativepagerview/event/PageSelectedEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 44
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
