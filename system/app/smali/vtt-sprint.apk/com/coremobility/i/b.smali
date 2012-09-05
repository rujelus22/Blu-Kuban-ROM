.class public final Lcom/coremobility/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/b/a;
.implements Lcom/coremobility/integration/message/b;


# static fields
.field private static e:Lcom/coremobility/i/b;


# instance fields
.field private a:[Lcom/coremobility/b/c;

.field private b:[Lcom/coremobility/b/b;

.field private c:I

.field private d:I

.field private f:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/i/b;->e:Lcom/coremobility/i/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/i/b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/i/b;->d:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    return-void
.end method

.method public static a()Lcom/coremobility/i/b;
    .registers 3

    sget-object v0, Lcom/coremobility/i/b;->e:Lcom/coremobility/i/b;

    if-nez v0, :cond_15

    const/16 v0, 0x1d

    const-string v1, "Creating SMSService instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/i/b;

    invoke-direct {v0}, Lcom/coremobility/i/b;-><init>()V

    sput-object v0, Lcom/coremobility/i/b;->e:Lcom/coremobility/i/b;

    :cond_15
    sget-object v0, Lcom/coremobility/i/b;->e:Lcom/coremobility/i/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x1d

    const/4 v2, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    if-nez p1, :cond_15

    :cond_d
    const-string v0, "Unable to send sms"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    new-instance v0, Lcom/coremobility/integration/message/d;

    invoke-direct {v0}, Lcom/coremobility/integration/message/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/message/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/message/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    invoke-static {v0}, Lcom/coremobility/integration/message/c;->a(Lcom/coremobility/integration/message/d;)V

    :goto_2c
    const-string v0, "Successfully sent SMS"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_34
    const-string v0, "Unable to get CM_SMSManager instance"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8

    const/16 v5, 0x1d

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x1d

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SMS %s "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    const-string v0, "null"

    :goto_1d
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_41

    move-object p1, v0

    :goto_2f
    const-string v0, "//CM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {p1}, Lcom/coremobility/i/g;->a(Ljava/lang/String;)Lcom/coremobility/i/g;

    move-result-object v4

    if-nez v4, :cond_50

    move v0, v1

    :goto_3e
    return v0

    :cond_3f
    move-object v0, p1

    goto :goto_1d

    :catch_41
    move-exception v0

    const-string v3, "Exception in convert String to utf-8: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f

    :cond_50
    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_74

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5b
    if-ltz v3, :cond_74

    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/i/a;

    invoke-interface {v0, v4}, Lcom/coremobility/i/a;->a(Lcom/coremobility/i/g;)I

    move-result v0

    if-ne v0, v2, :cond_70

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->g()V

    move v0, v2

    goto :goto_3e

    :cond_70
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5b

    :cond_74
    move v0, v1

    goto :goto_3e
.end method

.method private g()V
    .registers 9

    const/4 v7, 0x1

    const/16 v6, 0x1d

    const/4 v1, 0x0

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6a

    const-string v3, "CoreSMS[%d] currently %s "

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/coremobility/b/c;->a()Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "connected"

    :goto_27
    aput-object v2, v4, v7

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/coremobility/b/c;->c()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "CoreSMS[%d] has been shut down"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    const-string v2, "disconnected"

    goto :goto_27

    :cond_47
    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/coremobility/b/c;->a()Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "CoreSMS[%d] Shutdown conn and re-start"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v6, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/coremobility/b/c;->b()V

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6d
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v1, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "MDN is empty, not connecting to CoreSMSC"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43

    :cond_85
    move v0, v1

    :goto_86
    iget-object v3, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    array-length v3, v3

    if-ge v0, v3, :cond_43

    iget-object v3, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v3, v3, v0

    if-nez v3, :cond_b2

    const-string v3, "CoreSMS[%d] Connecting to server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    new-instance v4, Lcom/coremobility/b/c;

    iget-object v5, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v5, v5, v0

    invoke-direct {v4, v5, v2, p0}, Lcom/coremobility/b/c;-><init>(Lcom/coremobility/b/b;Ljava/lang/String;Lcom/coremobility/b/a;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/coremobility/b/c;->start()V

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_86
.end method


# virtual methods
.method public final a(Lcom/coremobility/i/a;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/i/a;

    if-ne v0, p1, :cond_15

    :goto_14
    return-void

    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "re-try as sessionTerminated  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/i/b;->g()V

    return-void
.end method

.method public final a(Lcom/coremobility/integration/message/d;)Z
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coremobility/integration/message/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/coremobility/integration/message/d;

    invoke-direct {v1}, Lcom/coremobility/integration/message/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/message/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coremobility/integration/message/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/i/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 10

    const/16 v8, 0x406

    const/16 v7, 0x405

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v2, 0x404

    invoke-virtual {v0, v2, v1, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    iput v0, p0, Lcom/coremobility/i/b;->d:I

    iget v0, p0, Lcom/coremobility/i/b;->d:I

    if-eqz v0, :cond_35

    move v0, v1

    :goto_16
    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    invoke-virtual {v2, v7, v0, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    invoke-virtual {v2, v8, v0, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2d
    if-lez v0, :cond_33

    iget-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    if-eqz v2, :cond_44

    :cond_33
    iput v1, p0, Lcom/coremobility/i/b;->d:I

    :cond_35
    iget v0, p0, Lcom/coremobility/i/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    invoke-direct {p0}, Lcom/coremobility/i/b;->g()V

    :cond_3d
    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    invoke-static {p0}, Lcom/coremobility/integration/message/c;->a(Lcom/coremobility/integration/message/b;)V

    return-void

    :cond_44
    new-array v2, v0, [Lcom/coremobility/b/c;

    iput-object v2, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    new-array v2, v0, [Lcom/coremobility/b/b;

    iput-object v2, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    move v2, v1

    :goto_4d
    if-ge v2, v0, :cond_35

    iget-object v3, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    new-instance v4, Lcom/coremobility/b/b;

    invoke-direct {v4}, Lcom/coremobility/b/b;-><init>()V

    aput-object v4, v3, v2

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v3

    invoke-virtual {v3, v7, v2, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v3

    iget-object v4, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v4, v4, v2

    invoke-static {v3}, Lcom/coremobility/integration/a/a;->e(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/coremobility/b/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v3, v3, v2

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v4

    invoke-virtual {v4, v8, v2, v1}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    iput v4, v3, Lcom/coremobility/b/b;->b:I

    iget-object v3, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v3, v3, v2

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v4

    const/16 v5, 0x408

    iget-object v6, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/coremobility/b/b;->c:I

    invoke-virtual {v4, v5, v2, v6}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v4

    iput v4, v3, Lcom/coremobility/b/b;->c:I

    iget-object v3, p0, Lcom/coremobility/i/b;->b:[Lcom/coremobility/b/b;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/coremobility/i/b;->c:I

    iput v4, v3, Lcom/coremobility/b/b;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d
.end method

.method public final b(Lcom/coremobility/i/a;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/i/a;

    if-ne v0, p1, :cond_1a

    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionDisconnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/i/b;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/i/b;->e:Lcom/coremobility/i/b;

    iput-object v0, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    return-void
.end method

.method public final e()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x1d

    const-string v2, "disconnect"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/coremobility/integration/message/c;->a()Lcom/coremobility/integration/message/c;

    invoke-static {v4}, Lcom/coremobility/integration/message/c;->a(Lcom/coremobility/integration/message/b;)V

    :cond_17
    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    if-nez v1, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/b/c;->b()V

    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aput-object v4, v1, v0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public final f()V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x1d

    const-string v2, "CM_SMSService recoonect called"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/coremobility/i/b;->a:[Lcom/coremobility/b/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/b/c;->d()V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    return-void
.end method
