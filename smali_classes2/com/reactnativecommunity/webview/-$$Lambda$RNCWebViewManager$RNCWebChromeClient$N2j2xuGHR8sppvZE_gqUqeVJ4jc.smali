.class public final synthetic Lcom/reactnativecommunity/webview/-$$Lambda$RNCWebViewManager$RNCWebChromeClient$N2j2xuGHR8sppvZE_gqUqeVJ4jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/react/modules/core/PermissionListener;


# instance fields
.field public final synthetic f$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;


# direct methods
.method public synthetic constructor <init>(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativecommunity/webview/-$$Lambda$RNCWebViewManager$RNCWebChromeClient$N2j2xuGHR8sppvZE_gqUqeVJ4jc;->f$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    iget-object v0, p0, Lcom/reactnativecommunity/webview/-$$Lambda$RNCWebViewManager$RNCWebChromeClient$N2j2xuGHR8sppvZE_gqUqeVJ4jc;->f$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->lambda$new$0$RNCWebViewManager$RNCWebChromeClient(I[Ljava/lang/String;[I)Z

    move-result p1

    return p1
.end method
