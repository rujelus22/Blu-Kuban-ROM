.class public LaQ/m;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaQ/m;->a:Ljava/lang/String;

    iput-object p2, p0, LaQ/m;->d:Ljava/lang/String;

    iput-boolean p3, p0, LaQ/m;->e:Z

    iput-wide p4, p0, LaQ/m;->f:J

    iput-object p6, p0, LaQ/m;->g:Ljava/lang/String;

    iput-boolean p7, p0, LaQ/m;->h:Z

    iput p8, p0, LaQ/m;->i:I

    iput p9, p0, LaQ/m;->j:I

    iput p10, p0, LaQ/m;->k:I

    iput-object p11, p0, LaQ/m;->b:Ljava/lang/String;

    iput-object p12, p0, LaQ/m;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;LaQ/n;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, LaQ/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
