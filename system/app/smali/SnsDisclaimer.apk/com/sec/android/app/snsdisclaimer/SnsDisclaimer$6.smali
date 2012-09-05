.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$6;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->showAlertDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$6;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$6;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-virtual {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    .line 463
    return-void
.end method
