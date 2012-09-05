.class public final Lcom/sdgtl/mediahub/spr/d/c;
.super Lcom/sdgtl/mediahub/spr/d/a;


# instance fields
.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Landroid/playready/playreadymanager/PlayReadyManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/a;-><init>()V

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->j:I

    iput v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->l:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->m:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->n:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->o:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->p:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->q:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->r:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->s:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->u:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->v:I

    const/4 v0, -0x3

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->w:I

    const/4 v0, -0x4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    if-nez v0, :cond_3f

    new-instance v0, Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-direct {v0}, Landroid/playready/playreadymanager/PlayReadyManager;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    :cond_3f
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->a:Z

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->b:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    const-string v0, "MediaHubDRM"

    const-string v1, "DrmPlayReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;Ljava/lang/String;)V
    .registers 8

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM - playready]f***P***: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CONTENTPATH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]Stream id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->StreamId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]NumCounts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]NumDates: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumDates:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]Category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]Vague: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Vague:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]CategoryStr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->CategoryStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_c7

    const/4 v0, 0x0

    :goto_c0
    int-to-long v2, v0

    iget-wide v4, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->NumCounts:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_144

    :cond_c7
    iget-object v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v0, :cond_105

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]Using Calendar the start date time info is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GMT-0 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    iget-object v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v0, :cond_143

    const-string v0, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM - playready]Using Calendar the end date time info is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GMT-0 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    return-void

    :cond_144
    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM - playready]Count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Count:[J

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v1, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_16
    if-eqz v1, :cond_97

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v2, :cond_21

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-static {v2, p1}, Lcom/sdgtl/mediahub/spr/d/c;->a(Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;Ljava/lang/String;)V

    :cond_21
    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    :goto_2b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    goto :goto_3

    :cond_31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_5f

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_5d
    const/4 v0, 0x5

    goto :goto_2b

    :cond_5f
    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_7a
    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_95
    const/4 v0, 0x0

    goto :goto_2b

    :cond_97
    const-string v1, "MediaHubDRM"

    const-string v2, "isLicensed - info == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->AcquireLicense(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyLicenseErrors;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/d/c;->a(Z)V

    if-eqz v0, :cond_59

    iget v1, v0, Landroid/playready/playreadymanager/PlayReadyLicenseErrors;->mErrorCode:I

    if-nez v1, :cond_1f

    const-string v0, "MediaHubDRM"

    const-string v1, "acquireLicense - DRM_LICENSE_ACQUISITION_SUCCESSFULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->a:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->b:I

    iput v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acquireLicense - licenseErrors.mErrorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/playready/playreadymanager/PlayReadyLicenseErrors;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/playready/playreadymanager/PlayReadyLicenseErrors;->mServiceURL:Ljava/lang/String;

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM - playready]license acquisition failed due to Service specific error, ***: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyLicenseErrors;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_59
    const-string v0, "MediaHubDRM"

    const-string v1, "acquireLicense - licenseErrors is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v1, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v2

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_16
    if-nez v1, :cond_20

    const-string v1, "MediaHubDRM"

    const-string v2, "getDrmLicenseStatus - info is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_20
    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x9

    cmp-long v0, v2, v4

    if-nez v0, :cond_58

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_56
    const/4 v0, 0x5

    goto :goto_3

    :cond_58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/c;->g:Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_7a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;J)V
    .registers 11

    const/4 v6, 0x0

    iget v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    :cond_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->c:[I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->b:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v0, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->isPlayReadyFile(Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_71

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestDrmLicense - f***P*** = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CONTENTPATH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isPlayReadyF*** = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestDrmLicense - mNextProgressRequestLicense = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sdgtl/mediahub/spr/d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v1, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    if-eqz v1, :cond_99

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v2, :cond_82

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-static {v2, p1}, Lcom/sdgtl/mediahub/spr/d/c;->a(Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;Ljava/lang/String;)V

    :cond_82
    iget-object v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v1, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_92

    if-eqz v0, :cond_91

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/d/c;->a(Ljava/lang/String;J)V

    :cond_91
    :goto_91
    return-void

    :cond_92
    iput-boolean v6, p0, Lcom/sdgtl/mediahub/spr/d/c;->a:Z

    iput v6, p0, Lcom/sdgtl/mediahub/spr/d/c;->b:I

    iput v6, p0, Lcom/sdgtl/mediahub/spr/d/c;->d:I

    goto :goto_91

    :cond_99
    if-eqz v0, :cond_91

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/d/c;->a(Ljava/lang/String;J)V

    goto :goto_91
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/c;->y:Landroid/playready/playreadymanager/PlayReadyManager;

    invoke-virtual {v1, p1}, Landroid/playready/playreadymanager/PlayReadyManager;->queryRights(Ljava/lang/String;)Landroid/playready/playreadymanager/PlayReadyRightsInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-wide v2, v2, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->Category:J

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v2, :cond_29

    iget-object v2, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    invoke-static {v2, p1}, Lcom/sdgtl/mediahub/spr/d/c;->a(Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;Ljava/lang/String;)V

    :cond_29
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v3, v3, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    if-eqz v3, :cond_47

    iget-object v0, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->end:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_47
    iget-object v3, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v3, v3, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    if-eqz v3, :cond_3

    iget-object v0, v1, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;

    iget-object v0, v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;->start:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final c(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method
