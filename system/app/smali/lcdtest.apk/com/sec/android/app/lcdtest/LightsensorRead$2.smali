.class Lcom/sec/android/app/lcdtest/LightsensorRead$2;
.super Ljava/lang/Object;
.source "LightsensorRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/lcdtest/LightsensorRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/LightsensorRead;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$2;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$2;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    #getter for: Lcom/sec/android/app/lcdtest/LightsensorRead;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->access$300(Lcom/sec/android/app/lcdtest/LightsensorRead;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/LightsensorRead$2;->this$0:Lcom/sec/android/app/lcdtest/LightsensorRead;

    invoke-virtual {v0}, Lcom/sec/android/app/lcdtest/LightsensorRead;->finish()V

    .line 98
    :cond_d
    return-void
.end method
