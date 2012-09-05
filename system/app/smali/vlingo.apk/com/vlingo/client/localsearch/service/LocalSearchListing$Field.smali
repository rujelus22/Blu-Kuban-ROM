.class public Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;
.super Ljava/lang/Object;
.source "LocalSearchListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/service/LocalSearchListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Field"
.end annotation


# instance fields
.field public isMoreAvailable:Z

.field final synthetic this$0:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "value"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->isMoreAvailable:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V
    .registers 4
    .parameter
    .parameter "isMoreAvailable"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->this$0:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    .line 97
    iput-boolean p2, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->isMoreAvailable:Z

    .line 98
    return-void
.end method


# virtual methods
.method public hasMoreInfo(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;)Z
    .registers 4
    .parameter "oldField"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 101
    iget-object v0, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Field;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 103
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
