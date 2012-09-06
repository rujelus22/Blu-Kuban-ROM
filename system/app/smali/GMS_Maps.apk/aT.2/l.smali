.class final LaT/l;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic h:J

.field final synthetic i:Z


# direct methods
.method constructor <init>(LY/c;ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput p2, p0, LaT/l;->a:I

    iput-object p3, p0, LaT/l;->b:Ljava/lang/String;

    iput-object p4, p0, LaT/l;->f:Ljava/lang/String;

    iput-object p5, p0, LaT/l;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-wide p6, p0, LaT/l;->h:J

    iput-boolean p8, p0, LaT/l;->i:Z

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    .line 343
    iget v0, p0, LaT/l;->a:I

    iget-object v1, p0, LaT/l;->b:Ljava/lang/String;

    iget-object v2, p0, LaT/l;->f:Ljava/lang/String;

    iget-object v3, p0, LaT/l;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-wide v4, p0, LaT/l;->h:J

    iget-boolean v6, p0, LaT/l;->i:Z

    invoke-static/range {v0 .. v6}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    .line 344
    return-void
.end method
