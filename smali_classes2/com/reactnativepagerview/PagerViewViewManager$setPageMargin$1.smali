.class final Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;
.super Ljava/lang/Object;
.source "PagerViewViewManager.kt"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativepagerview/PagerViewViewManager;->setPageMargin(Landroidx/viewpager2/widget/ViewPager2;F)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "page",
        "Landroid/view/View;",
        "position",
        "",
        "transformPage"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $pageMargin:I

.field final synthetic $pager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(ILandroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput p1, p0, Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;->$pageMargin:I

    iput-object p2, p0, Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;->$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 2

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;->$pageMargin:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 226
    iget-object p2, p0, Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;->$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p2

    if-nez p2, :cond_2

    .line 227
    iget-object p2, p0, Lcom/reactnativepagerview/PagerViewViewManager$setPageMargin$1;->$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getLayoutDirection()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    neg-float v0, v0

    .line 228
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method
