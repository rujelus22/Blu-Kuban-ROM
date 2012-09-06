.class final Lcom/google/android/apps/plus/hangout/GCommApp$4;
.super Ljava/lang/Object;
.source "GCommApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

.field final synthetic val$messageId:I

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iput p2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$messageId:I

    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;

    iget v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$messageId:I

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$4;->val$obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->dispatchMessage(ILjava/lang/Object;)V

    .line 923
    return-void
.end method
