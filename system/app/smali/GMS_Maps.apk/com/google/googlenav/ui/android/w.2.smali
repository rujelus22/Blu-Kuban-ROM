.class Lcom/google/googlenav/ui/android/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/x;


# direct methods
.method constructor <init>(Ln/x;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/googlenav/ui/android/W;->a:Ln/x;

    .line 119
    return-void
.end method


# virtual methods
.method public a()Ln/x;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/android/W;->a:Ln/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/android/W;->a:Ln/x;

    if-nez v0, :cond_7

    .line 128
    const-string v0, "1"

    .line 130
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/android/W;->a:Ln/x;

    invoke-virtual {v0}, Ln/x;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
