.class LaQ/aS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/String;

.field public final c:C

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;CZII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, LaQ/aS;->a:Ljava/lang/CharSequence;

    .line 49
    iput-object p2, p0, LaQ/aS;->b:Ljava/lang/String;

    .line 50
    iput-char p3, p0, LaQ/aS;->c:C

    .line 51
    iput-boolean p4, p0, LaQ/aS;->d:Z

    .line 52
    iput p5, p0, LaQ/aS;->e:I

    .line 53
    iput p6, p0, LaQ/aS;->f:I

    .line 54
    return-void
.end method
