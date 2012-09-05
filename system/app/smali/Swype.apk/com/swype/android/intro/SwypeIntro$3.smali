.class Lcom/swype/android/intro/SwypeIntro$3;
.super Ljava/lang/Object;
.source "SwypeIntro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/intro/SwypeIntro;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/intro/SwypeIntro;


# direct methods
.method constructor <init>(Lcom/swype/android/intro/SwypeIntro;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/swype/android/intro/SwypeIntro$3;->this$0:Lcom/swype/android/intro/SwypeIntro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro$3;->this$0:Lcom/swype/android/intro/SwypeIntro;

    invoke-virtual {v0}, Lcom/swype/android/intro/SwypeIntro;->changeIME()V

    .line 72
    return-void
.end method
