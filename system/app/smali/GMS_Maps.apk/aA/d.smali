.class public LaA/d;
.super LaA/z;


# instance fields
.field private final a:LaA/j;


# direct methods
.method public constructor <init>(ILaA/j;)V
    .registers 3

    invoke-direct {p0, p1}, LaA/z;-><init>(I)V

    iput-object p2, p0, LaA/d;->a:LaA/j;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget-object v0, p0, LaA/d;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->h()F

    move-result v0

    return v0
.end method
