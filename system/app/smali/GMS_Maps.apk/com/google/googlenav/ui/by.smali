.class public Lcom/google/googlenav/ui/by;
.super LS/a;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([LS/g;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, LS/a;-><init>([LS/g;)V

    .line 29
    iput-object p2, p0, Lcom/google/googlenav/ui/by;->a:[Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a(II)C
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/by;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
