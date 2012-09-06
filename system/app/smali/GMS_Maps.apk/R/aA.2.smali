.class Lr/aA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/lang/String;

.field final d:I

.field final e:[B

.field final f:Ln/al;

.field final g:Ln/am;

.field final h:Lr/aF;


# direct methods
.method constructor <init>(JLjava/lang/String;ILn/am;Lr/aF;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lr/aA;->a:I

    .line 147
    iput-wide p1, p0, Lr/aA;->b:J

    .line 148
    iput-object p3, p0, Lr/aA;->c:Ljava/lang/String;

    .line 149
    iput p4, p0, Lr/aA;->d:I

    .line 150
    iput-object v1, p0, Lr/aA;->e:[B

    .line 151
    iput-object p5, p0, Lr/aA;->g:Ln/am;

    .line 152
    iput-object v1, p0, Lr/aA;->f:Ln/al;

    .line 153
    iput-object p6, p0, Lr/aA;->h:Lr/aF;

    .line 154
    return-void
.end method

.method constructor <init>(JLjava/lang/String;I[BLn/al;Lr/aF;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lr/aA;->a:I

    .line 160
    iput-wide p1, p0, Lr/aA;->b:J

    .line 161
    iput-object p3, p0, Lr/aA;->c:Ljava/lang/String;

    .line 162
    iput p4, p0, Lr/aA;->d:I

    .line 163
    iput-object p5, p0, Lr/aA;->e:[B

    .line 164
    if-nez p6, :cond_18

    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Lr/aA;->g:Ln/am;

    .line 165
    iput-object p6, p0, Lr/aA;->f:Ln/al;

    .line 166
    iput-object p7, p0, Lr/aA;->h:Lr/aF;

    .line 167
    return-void

    .line 164
    :cond_18
    invoke-interface {p6}, Ln/al;->d()Ln/am;

    move-result-object v0

    goto :goto_11
.end method
