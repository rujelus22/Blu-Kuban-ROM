.class public final Lew;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Lev;

.field public static final b:Lev;

.field public static final c:Lev;

.field public static final d:Lev;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 38
    new-instance v0, Lev;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lew;->a:Lev;

    .line 49
    new-instance v0, Lev;

    sget-object v1, Lew;->a:Lev;

    const-string v2, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v2}, Lev;-><init>(Lev;Ljava/lang/String;)V

    sput-object v0, Lew;->b:Lev;

    .line 56
    new-instance v0, Lev;

    sget-object v1, Lew;->a:Lev;

    const-string v2, "PEM"

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lev;-><init>(Lev;Ljava/lang/String;ZCI)V

    sput-object v0, Lew;->c:Lev;

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 74
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 78
    new-instance v0, Lev;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7fffffff

    move v3, v6

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lew;->d:Lev;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lev;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lew;->b:Lev;

    return-object v0
.end method
