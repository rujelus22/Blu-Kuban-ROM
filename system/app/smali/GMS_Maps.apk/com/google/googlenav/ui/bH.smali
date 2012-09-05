.class public Lcom/google/googlenav/ui/bH;
.super Lah/a;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Lah/g;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lah/a;-><init>([Lah/g;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/bH;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(II)C
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/bH;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
