.class final Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;
.super Ljava/lang/Object;
.source "PagerViewViewManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativepagerview/PagerViewViewManager;->setInitialPage(Landroidx/viewpager2/widget/ViewPager2;I)V
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
.field final synthetic $value:I

.field final synthetic $viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field final synthetic this$0:Lcom/reactnativepagerview/PagerViewViewManager;


# direct methods
.method constructor <init>(Lcom/reactnativepagerview/PagerViewViewManager;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    iput-object p1, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    iput-object p2, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput p3, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->this$0:Lcom/reactnativepagerview/PagerViewViewManager;

    iget-object v1, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, p0, Lcom/reactnativepagerview/PagerViewViewManager$setInitialPage$1;->$value:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/reactnativepagerview/PagerViewViewManager;->access$setCurrentItem(Lcom/reactnativepagerview/PagerViewViewManager;Landroidx/viewpager2/widget/ViewPager2;IZ)V

    return-void
.end method
