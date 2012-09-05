.class Lcom/android/browser/PieControlXLarge$2;
.super Ljava/lang/Object;
.source "PieControlXLarge.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControlXLarge;->populateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControlXLarge;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControlXLarge;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/browser/PieControlXLarge$2;->this$0:Lcom/android/browser/PieControlXLarge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIZ)V
    .registers 5
    .parameter "ax"
    .parameter "ay"
    .parameter "left"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/PieControlXLarge$2;->this$0:Lcom/android/browser/PieControlXLarge;

    #calls: Lcom/android/browser/PieControlXLarge;->buildMenu()V
    invoke-static {v0}, Lcom/android/browser/PieControlXLarge;->access$100(Lcom/android/browser/PieControlXLarge;)V

    .line 100
    return-void
.end method
