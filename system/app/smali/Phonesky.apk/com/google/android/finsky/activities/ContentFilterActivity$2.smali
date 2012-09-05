.class Lcom/google/android/finsky/activities/ContentFilterActivity$2;
.super Ljava/lang/Object;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 111
    return-void
.end method
