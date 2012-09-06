.class final Lcom/dropbox/android/activity/bP;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-static {}, Lcom/dropbox/android/util/h;->k()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "cameraupload.uploadexisting"

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 287
    return-void
.end method
