.class Lcom/google/android/apps/translate/SupersizeTextActivity$1;
.super Ljava/lang/Object;
.source "SupersizeTextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SupersizeTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SupersizeTextActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SupersizeTextActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/translate/SupersizeTextActivity$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextActivity$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SupersizeTextActivity;->onBackPressed()V

    .line 70
    return-void
.end method
