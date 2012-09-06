.class public LaD/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, LaD/j;->a:J

    .line 26
    iput-wide p3, p0, LaD/j;->b:J

    .line 27
    iput-object p5, p0, LaD/j;->c:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, LaD/j;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, LaD/j;->c:Ljava/lang/String;

    return-object v0
.end method
