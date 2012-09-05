.class public Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;
.super Ljava/lang/Object;
.source "smlvItemApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvItemApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlVItemAppTemplet_t"
.end annotation


# instance fields
.field public AppTarget:I

.field public CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

.field public CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

.field public EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

.field public EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;


# direct methods
.method public constructor <init>(I[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;)V
    .registers 6
    .parameter "app"
    .parameter "charsetvcard"
    .parameter "enctypevcard"
    .parameter "charsetvcal"
    .parameter "enctypevcal"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->AppTarget:I

    .line 60
    iput-object p2, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    .line 61
    iput-object p3, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCard:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    .line 63
    iput-object p4, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->CharSetvCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlCharSet_t;

    .line 64
    iput-object p5, p0, Lcom/syncmldstmo/base/vitem/smlvItemApi$smlVItemAppTemplet_t;->EncTypevCal:[Lcom/syncmldstmo/base/vitem/smlvItemApi$smlEncodeType_t;

    .line 65
    return-void
.end method
