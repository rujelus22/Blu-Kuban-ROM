.class Lcom/sec/android/app/myfiles/activity/DetailsActivity$8;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/activity/DetailsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$8;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$8;->this$0:Lcom/sec/android/app/myfiles/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->finish()V

    .line 387
    return-void
.end method
