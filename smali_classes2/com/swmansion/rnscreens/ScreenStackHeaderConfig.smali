.class public Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
.super Landroid/view/ViewGroup;
.source "ScreenStackHeaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$DebugMenuToolbar;
    }
.end annotation


# instance fields
.field private mBackButtonInCustomView:Z

.field private final mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBackgroundColor:Ljava/lang/Integer;

.field private final mConfigSubviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultStartInset:I

.field private final mDefaultStartInsetWithNavigation:I

.field private mDestroyed:Z

.field private mDirection:Ljava/lang/String;

.field private mIsAttachedToWindow:Z

.field private mIsBackButtonHidden:Z

.field private mIsHidden:Z

.field private mIsShadowHidden:Z

.field private mIsTopInsetEnabled:Z

.field private mIsTranslucent:Z

.field private mTintColor:I

.field private mTitle:Ljava/lang/String;

.field private mTitleColor:I

.field private mTitleFontFamily:Ljava/lang/String;

.field private mTitleFontSize:F

.field private mTitleFontWeight:I

.field private final mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 70
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsTopInsetEnabled:Z

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    .line 50
    new-instance v2, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;

    invoke-direct {v2, p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)V

    iput-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackClickListener:Landroid/view/View$OnClickListener;

    const/16 v2, 0x8

    .line 71
    invoke-virtual {p0, v2}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->setVisibility(I)V

    .line 73
    new-instance v2, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v2, p1}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 74
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v3

    iput v3, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDefaultStartInset:I

    .line 75
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStartWithNavigation()I

    move-result v3

    iput v3, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDefaultStartInsetWithNavigation:I

    .line 78
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v4, 0x1010433

    invoke-virtual {p1, v4, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget p1, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 82
    :cond_0
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;)Lcom/swmansion/rnscreens/ScreenStack;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object p0

    return-object p0
.end method

.method private getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 109
    instance-of v1, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTitleTextView()Landroid/widget/TextView;
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 349
    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 351
    check-cast v2, Landroid/widget/TextView;

    .line 352
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeUpdate()V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigSubview(Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;I)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    return-void
.end method

.method public getConfigSubview(I)Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    return-object p1
.end method

.method public getConfigSubviewsCount()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    .line 98
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->onUpdate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onUpdate()V
    .locals 11

    .line 138
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    .line 139
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenStack()Lcom/swmansion/rnscreens/ScreenStack;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 142
    :goto_1
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDestroyed:Z

    if-eqz v0, :cond_2

    goto/16 :goto_a

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_3

    return-void

    .line 151
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_5

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDirection:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v4, "rtl"

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setLayoutDirection(I)V

    goto :goto_2

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDirection:Ljava/lang/String;

    const-string v4, "ltr"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setLayoutDirection(I)V

    .line 160
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 166
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v5, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_3

    .line 170
    :cond_6
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 171
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/ScreenFragment;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v4

    .line 174
    :goto_3
    invoke-static {v1, v0, v5}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->trySetWindowTraits(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 177
    :cond_8
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsHidden:Z

    if-eqz v1, :cond_a

    .line 178
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 179
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->removeToolbar()V

    :cond_9
    return-void

    .line 184
    :cond_a
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v5}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 188
    :cond_b
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsTopInsetEnabled:Z

    if-eqz v1, :cond_d

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v1, v5, :cond_c

    .line 190
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    invoke-virtual {v1, v3, v5, v3, v3}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    goto :goto_4

    .line 193
    :cond_c
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    invoke-virtual {v1, v3, v5, v3, v3}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    goto :goto_4

    .line 196
    :cond_d
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v1

    if-lez v1, :cond_e

    .line 197
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    .line 201
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 202
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDefaultStartInsetWithNavigation:I

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    .line 210
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDefaultStartInset:I

    invoke-virtual {v1, v5, v5}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 214
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->canNavigateBack()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsBackButtonHidden:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 213
    :goto_5
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    iget-boolean v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsShadowHidden:Z

    invoke-virtual {v1, v5}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setToolbarShadowHidden(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v1

    iget-boolean v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsTranslucent:Z

    invoke-virtual {v1, v5}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setToolbarTranslucent(Z)V

    .line 228
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 233
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    .line 235
    :cond_10
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 236
    iget v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleColor:I

    if-eqz v5, :cond_11

    .line 237
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    :cond_11
    if-eqz v1, :cond_14

    .line 240
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontFamily:Ljava/lang/String;

    if-nez v5, :cond_12

    iget v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontWeight:I

    if-lez v6, :cond_13

    .line 241
    :cond_12
    iget v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontWeight:I

    .line 243
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 242
    invoke-static {v4, v3, v6, v5, v7}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->applyStyles(Landroid/graphics/Typeface;IILjava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 244
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    :cond_13
    iget v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontSize:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_14

    .line 247
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    :cond_14
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 253
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 257
    :cond_15
    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    if-eqz v1, :cond_16

    .line 258
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 260
    iget v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    :cond_16
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_6
    if-ltz v1, :cond_18

    .line 266
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    if-eqz v5, :cond_17

    .line 267
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 270
    :cond_18
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_1f

    .line 271
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    .line 272
    invoke-virtual {v6}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getType()Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    move-result-object v7

    .line 274
    sget-object v8, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->BACK:Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;

    if-ne v7, v8, :cond_1a

    .line 277
    invoke-virtual {v6, v3}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 278
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_19

    .line 282
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 279
    :cond_19
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string v1, "Back button header config view should have Image as first child"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1a
    new-instance v8, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 289
    sget-object v9, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig$2;->$SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type:[I

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview$Type;->ordinal()I

    move-result v7

    aget v7, v9, v7

    if-eq v7, v2, :cond_1d

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1c

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1b

    goto :goto_8

    .line 303
    :cond_1b
    iput v10, v8, Landroidx/appcompat/widget/Toolbar$LayoutParams;->width:I

    .line 304
    iput v2, v8, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 305
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_1c
    const v7, 0x800005

    .line 300
    iput v7, v8, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_8

    .line 293
    :cond_1d
    iget-boolean v7, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackButtonInCustomView:Z

    if-nez v7, :cond_1e

    .line 294
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_1e
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const v7, 0x800003

    .line 297
    iput v7, v8, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 309
    :goto_8
    invoke-virtual {v6, v8}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v7, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_1f
    :goto_a
    return-void
.end method

.method public removeAllConfigSubviews()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public removeConfigSubview(I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mConfigSubviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->maybeUpdate()V

    return-void
.end method

.method public setBackButtonInCustomView(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackButtonInCustomView:Z

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mDirection:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsHidden:Z

    return-void
.end method

.method public setHideBackButton(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsBackButtonHidden:Z

    return-void
.end method

.method public setHideShadow(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsShadowHidden:Z

    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTintColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitleColor(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleColor:I

    return-void
.end method

.method public setTitleFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontFamily:Ljava/lang/String;

    return-void
.end method

.method public setTitleFontSize(F)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontSize:F

    return-void
.end method

.method public setTitleFontWeight(Ljava/lang/String;)V
    .locals 0

    .line 369
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontWeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mTitleFontWeight:I

    return-void
.end method

.method public setTopInsetEnabled(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsTopInsetEnabled:Z

    return-void
.end method

.method public setTranslucent(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->mIsTranslucent:Z

    return-void
.end method
