.class public final Lcom/reactnativepagerview/ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/reactnativepagerview/ViewPagerViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/reactnativepagerview/ViewPagerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/reactnativepagerview/ViewPagerViewHolder;",
        "()V",
        "childrenViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "addChild",
        "",
        "child",
        "index",
        "",
        "getChildAt",
        "getItemCount",
        "onBindViewHolder",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "removeAll",
        "removeChild",
        "removeChildAt",
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
.field private final childrenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addChild(Landroid/view/View;I)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "childrenViews[index]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/reactnativepagerview/ViewPagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->onBindViewHolder(Lcom/reactnativepagerview/ViewPagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/reactnativepagerview/ViewPagerViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/reactnativepagerview/ViewPagerViewHolder;->getContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/reactnativepagerview/ViewPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/reactnativepagerview/ViewPagerViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/reactnativepagerview/ViewPagerViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p2, Lcom/reactnativepagerview/ViewPagerViewHolder;->Companion:Lcom/reactnativepagerview/ViewPagerViewHolder$Companion;

    invoke-virtual {p2, p1}, Lcom/reactnativepagerview/ViewPagerViewHolder$Companion;->create(Landroid/view/ViewGroup;)Lcom/reactnativepagerview/ViewPagerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final removeChild(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/ViewPagerAdapter;->removeChildAt(I)V

    return-void
.end method

.method public final removeChildAt(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/reactnativepagerview/ViewPagerAdapter;->childrenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, p1}, Lcom/reactnativepagerview/ViewPagerAdapter;->notifyItemRemoved(I)V

    return-void
.end method
