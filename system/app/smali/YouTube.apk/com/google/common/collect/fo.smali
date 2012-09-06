.class final Lcom/google/common/collect/fo;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Lists$StringAsImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$StringAsImmutableList;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/google/common/collect/fo;->a:Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/i;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/collect/fo;->a:Lcom/google/common/collect/Lists$StringAsImmutableList;

    #getter for: Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->access$000(Lcom/google/common/collect/Lists$StringAsImmutableList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
