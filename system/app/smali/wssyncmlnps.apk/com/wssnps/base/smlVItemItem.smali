.class public Lcom/wssnps/base/smlVItemItem;
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
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "nTagNo"
    .parameter "Tag"
    .parameter "Value"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    .line 13
    iput-object p2, p0, Lcom/wssnps/base/smlVItemItem;->Tag:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/wssnps/base/smlVItemItem;->Value:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public setnTagNo(I)V
    .registers 2
    .parameter "nTagNo"

    .prologue
    .line 30
    iput p1, p0, Lcom/wssnps/base/smlVItemItem;->nTagNo:I

    .line 31
    return-void
.end method
