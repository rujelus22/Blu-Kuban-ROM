.class Lcom/sec/android/socialhub/view/SearchBaseLayout$2;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$2;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$2;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onGatewayButtonClick()V

    .line 137
    return-void
.end method