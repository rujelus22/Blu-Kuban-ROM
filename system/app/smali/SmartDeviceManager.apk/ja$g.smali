.class public final Lja$g;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lja$g;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    .line 1089
    iput-object p1, p0, Lja$g;->a:Ljava/lang/Class;

    .line 1090
    return-void
.end method

.method private b(Lfd;Lhc;)Ljava/util/Calendar;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-virtual {p0, p1, p2}, Lja$g;->p(Lfd;Lhc;)Ljava/util/Date;

    move-result-object v1

    .line 1097
    if-nez v1, :cond_8

    .line 1098
    const/4 v0, 0x0

    .line 1106
    :goto_7
    return-object v0

    .line 1100
    :cond_8
    iget-object v0, p0, Lja$g;->a:Ljava/lang/Class;

    if-nez v0, :cond_11

    .line 1101
    invoke-virtual {p2, v1}, Lhc;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_7

    .line 1104
    :cond_11
    :try_start_11
    iget-object v0, p0, Lja$g;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1105
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_7

    .line 1107
    :catch_21
    move-exception v0

    .line 1108
    iget-object v1, p0, Lja$g;->a:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lhc;->a(Ljava/lang/Class;Ljava/lang/Exception;)Lhg;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2}, Lja$g;->b(Lfd;Lhc;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
