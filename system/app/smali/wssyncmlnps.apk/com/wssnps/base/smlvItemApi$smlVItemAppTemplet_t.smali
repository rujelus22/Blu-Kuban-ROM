.class public Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvItemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlVItemAppTemplet_t"
.end annotation


# instance fields
.field public AppTarget:I

.field public CharSetvCal:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

.field public CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

.field public EncTypevCal:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

.field public EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;


# direct methods
.method public constructor <init>(I[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;)V
    .registers 6
    .parameter "app"
    .parameter "charsetvcard"
    .parameter "enctypevcard"
    .parameter "charsetvcal"
    .parameter "enctypevcal"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    .line 67
    iput-object p2, p0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    .line 68
    iput-object p3, p0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    .line 70
    iput-object p4, p0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/wssnps/base/smlvItemApi$smlCharSet_t;

    .line 71
    iput-object p5, p0, Lcom/wssnps/base/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/wssnps/base/smlvItemApi$smlEncodeType_t;

    .line 72
    return-void
.end method
