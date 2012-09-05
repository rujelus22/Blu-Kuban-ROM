.class Lcom/sprint/dsa/SzSettings$Setting;
.super Ljava/lang/Object;
.source "SzSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/SzSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Setting"
.end annotation


# instance fields
.field private m_description:Ljava/lang/String;

.field private m_id:J

.field private m_packId:Ljava/lang/String;

.field private m_show:J

.field private m_title:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/dsa/SzSettings;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/SzSettings;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "id"
    .parameter "show"
    .parameter "title"
    .parameter "desc"
    .parameter "packId"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sprint/dsa/SzSettings$Setting;->this$0:Lcom/sprint/dsa/SzSettings;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p2, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_id:J

    .line 51
    iput-wide p4, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_show:J

    .line 52
    iput-object p6, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_title:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_description:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_packId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/SzSettings$Setting;)J
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_id:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/SzSettings$Setting;)J
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_show:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/SzSettings$Setting;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/SzSettings$Setting;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/dsa/SzSettings$Setting;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_show:J

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_id:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing()Z
    .registers 5

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_show:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setShow(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 74
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sprint/dsa/SzSettings$Setting;->m_show:J

    .line 75
    return-void

    .line 74
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
