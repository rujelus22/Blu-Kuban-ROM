.class Lcom/samsung/wimax/napid/WriteMRU$3;
.super Ljava/lang/Object;
.source "WriteMRU.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/WriteMRU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/WriteMRU;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/WriteMRU;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/wimax/napid/WriteMRU$3;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/wimax/napid/WriteMRU$3;->this$0:Lcom/samsung/wimax/napid/WriteMRU;

    #calls: Lcom/samsung/wimax/napid/WriteMRU;->addMru()V
    invoke-static {v0}, Lcom/samsung/wimax/napid/WriteMRU;->access$200(Lcom/samsung/wimax/napid/WriteMRU;)V

    .line 170
    return-void
.end method
