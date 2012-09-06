.class LafT;
.super LafV;
.source "Splitter.java"


# instance fields
.field final synthetic a:LafS;


# direct methods
.method constructor <init>(LafS;LafR;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, LafT;->a:LafS;

    invoke-direct {p0, p2, p3}, LafV;-><init>(LafR;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, LafT;->a:LafS;

    iget-object v0, v0, LafS;->a:Lafl;

    iget-object v1, p0, LafT;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lafl;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3
    .parameter

    .prologue
    .line 150
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
