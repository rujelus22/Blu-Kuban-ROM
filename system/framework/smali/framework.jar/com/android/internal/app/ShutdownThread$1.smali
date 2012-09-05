.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-static {v1}, Lcom/android/internal/app/ShutdownThread;->access$002(Z)Z

    .line 214
    const-string v0, ""

    invoke-static {v0}, Lcom/android/internal/app/ShutdownThread;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    invoke-static {v1}, Lcom/android/internal/app/ShutdownThread;->access$202(Z)Z

    .line 216
    return-void
.end method
