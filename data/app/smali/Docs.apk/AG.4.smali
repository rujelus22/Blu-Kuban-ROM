.class public LAG;
.super Ljava/lang/Object;
.source "TextPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, LAG;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v0, p0, LAG;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->a(Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;Z)Z

    .line 85
    iget-object v0, p0, LAG;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextPopup;->q()V

    .line 86
    return v1
.end method
