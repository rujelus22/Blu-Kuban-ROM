.class Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$3;
.super Ljava/lang/Object;
.source "MainActivityTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->finish()V

    .line 132
    return-void
.end method
