.class final Lcom/google/android/apps/translate/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/Util;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/translate/Util$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/apps/translate/Util$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/apps/translate/Util$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/translate/Util$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/Util$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/translate/Util$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method
