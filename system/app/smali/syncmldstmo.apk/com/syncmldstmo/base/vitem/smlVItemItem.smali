.class public Lcom/syncmldstmo/base/vitem/smlVItemItem;
.super Ljava/lang/Object;
.source "smlVItemItem.java"


# instance fields
.field public Tag:Ljava/lang/String;

.field public Value:Ljava/lang/String;

.field public nTagNo:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "nTagNo"
    .parameter "Tag"
    .parameter "Value"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    .line 16
    iput-object p2, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Tag:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->Value:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public setnTagNo(I)V
    .registers 2
    .parameter "nTagNo"

    .prologue
    .line 37
    iput p1, p0, Lcom/syncmldstmo/base/vitem/smlVItemItem;->nTagNo:I

    .line 38
    return-void
.end method
