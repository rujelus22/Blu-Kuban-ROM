.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$5;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->onCreate(Landroid/os/Bundle;)V
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
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$5;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$5;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    invoke-virtual {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    .line 276
    return-void
.end method
