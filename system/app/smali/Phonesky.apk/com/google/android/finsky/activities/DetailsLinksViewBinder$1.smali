.class Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsLinksViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

.field final synthetic val$clickIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsLinksViewBinder;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;->val$clickIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsLinksViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsLinksViewBinder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;->val$clickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method
