.class public Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
.super Ljava/lang/Object;
.source "InviteAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/invite/InviteAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public cheched:Z

.field public final id:J

.field public final name:Ljava/lang/String;

.field public final number:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    .line 286
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 288
    :cond_16
    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 289
    :cond_1d
    iput-wide p1, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->id:J

    .line 290
    iput-object p3, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->type:Ljava/lang/String;

    .line 293
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/vlingo/client/invite/InviteAdaptor$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 277
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    .line 296
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 297
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 298
    :cond_16
    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 299
    :cond_1d
    iput-wide p1, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->id:J

    .line 300
    iput-object p3, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    .line 301
    iput-object p4, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    .line 302
    iput-object p5, p0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->type:Ljava/lang/String;

    .line 303
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/invite/InviteAdaptor$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 277
    invoke-direct/range {p0 .. p5}, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
