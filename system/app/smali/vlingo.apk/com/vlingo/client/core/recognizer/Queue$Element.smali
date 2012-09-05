.class final Lcom/vlingo/client/core/recognizer/Queue$Element;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Element"
.end annotation


# instance fields
.field m_Element:Ljava/lang/Object;

.field m_Next:Lcom/vlingo/client/core/recognizer/Queue$Element;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Queue$Element;->m_Element:Ljava/lang/Object;

    .line 58
    return-void
.end method
