.class final Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;
.super Ljava/lang/Object;
.source "PagerViewViewManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativepagerview/PagerViewViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $vp:Landroidx/viewpager2/widget/ViewPager2;

.field final synthetic this$0:Lcom/reactnativepagerview/PagerViewViewManager;


# direct methods
.method constructor <init>(Lcom/reactnativepagerview/PagerViewViewManager;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    iput-object p2, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;

    invoke-direct {v1, p0}, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1$1;-><init>(Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;)V

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 61
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    invoke-static {v0}, Lcom/reactnativepagerview/PagerViewViewManager;->access$getEventDispatcher$p(Lcom/reactnativepagerview/PagerViewViewManager;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/reactnativepagerview/event/PageSelectedEvent;

    iget-object v2, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/reactnativepagerview/PagerViewViewManager$createViewInstance$1;->$vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/reactnativepagerview/event/PageSelectedEvent;-><init>(II)V

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
