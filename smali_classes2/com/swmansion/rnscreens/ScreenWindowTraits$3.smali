.class Lcom/swmansion/rnscreens/ScreenWindowTraits$3;
.super Lcom/facebook/react/bridge/GuardedRunnable;
.source "ScreenWindowTraits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$translucent:Z


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/app/Activity;Z)V
    .locals 0

    .line 175
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;->val$translucent:Z

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedRunnable;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public runGuarded()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 182
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$3;->val$translucent:Z

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Lcom/swmansion/rnscreens/ScreenWindowTraits$3$1;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/ScreenWindowTraits$3$1;-><init>(Lcom/swmansion/rnscreens/ScreenWindowTraits$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 199
    :goto_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method
