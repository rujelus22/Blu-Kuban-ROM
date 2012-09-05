.class Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field alertdlg_builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;)V
    .registers 2
    .parameter "alertDialog"

    .prologue
    .line 552
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;->alertdlg_builder:Landroid/app/AlertDialog$Builder;

    .line 554
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;->alertdlg_builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 558
    return-void
.end method
