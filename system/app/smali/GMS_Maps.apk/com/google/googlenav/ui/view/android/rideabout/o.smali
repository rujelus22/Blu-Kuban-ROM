.class public Lcom/google/googlenav/ui/view/android/rideabout/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/o;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/o;->b:Landroid/text/style/CharacterStyle;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/text/style/CharacterStyle;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/o;->b:Landroid/text/style/CharacterStyle;

    return-object v0
.end method
