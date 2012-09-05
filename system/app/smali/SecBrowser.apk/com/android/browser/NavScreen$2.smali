.class Lcom/android/browser/NavScreen$2;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lcom/android/browser/SecBrowserAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/NavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/NavScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/browser/NavScreen$2;->this$0:Lcom/android/browser/NavScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/browser/SecBrowserAdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/browser/NavScreen$2;->this$0:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, p3}, Lcom/android/browser/NavScreen;->close(I)V

    .line 235
    return-void
.end method
