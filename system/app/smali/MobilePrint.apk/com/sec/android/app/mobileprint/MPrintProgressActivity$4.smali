.class Lcom/sec/android/app/mobileprint/MPrintProgressActivity$4;
.super Ljava/lang/Object;
.source "MPrintProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$4;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->finish()V

    .line 162
    :cond_8
    return-void
.end method
