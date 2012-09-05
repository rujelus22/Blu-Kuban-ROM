.class Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;
.super Landroid/database/DataSetObserver;
.source "ProfileAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateCircleList()V

    .line 1165
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;->updateView()V

    .line 1166
    return-void
.end method
