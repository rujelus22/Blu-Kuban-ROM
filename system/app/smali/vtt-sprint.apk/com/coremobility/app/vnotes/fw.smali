.class public final Lcom/coremobility/app/vnotes/fw;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Ljava/lang/Object;

.field final synthetic e:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Ljava/lang/String;IILjava/lang/Object;)V
    .registers 6

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fw;->e:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coremobility/app/vnotes/fw;->a:Ljava/lang/String;

    iput p3, p0, Lcom/coremobility/app/vnotes/fw;->b:I

    iput p4, p0, Lcom/coremobility/app/vnotes/fw;->c:I

    iput-object p5, p0, Lcom/coremobility/app/vnotes/fw;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a(Lcom/coremobility/app/vnotes/fw;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/fw;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/coremobility/app/vnotes/fw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-lez v2, :cond_11

    move v0, v1

    goto :goto_c

    :cond_11
    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->b:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->b:I

    if-lt v2, v3, :cond_c

    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->b:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->b:I

    if-le v2, v3, :cond_1f

    move v0, v1

    goto :goto_c

    :cond_1f
    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->c:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->c:I

    if-lt v2, v3, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method final b(Lcom/coremobility/app/vnotes/fw;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/fw;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/coremobility/app/vnotes/fw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-lez v2, :cond_11

    move v0, v1

    goto :goto_c

    :cond_11
    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->b:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->b:I

    if-ge v2, v3, :cond_19

    move v0, v1

    goto :goto_c

    :cond_19
    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->b:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->b:I

    if-gt v2, v3, :cond_c

    iget v2, p0, Lcom/coremobility/app/vnotes/fw;->c:I

    iget v3, p1, Lcom/coremobility/app/vnotes/fw;->c:I

    if-ge v2, v3, :cond_c

    move v0, v1

    goto :goto_c
.end method
