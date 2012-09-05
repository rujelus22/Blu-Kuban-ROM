.class final Lcom/coremobility/app/vnotes/ht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ht;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/coremobility/app/vnotes/hr;

    check-cast p2, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {p1}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
