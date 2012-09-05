.class public Lcom/google/googlenav/ui/view/android/rideabout/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->b:Landroid/text/style/CharacterStyle;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/text/style/CharacterStyle;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/k;->b:Landroid/text/style/CharacterStyle;

    return-object v0
.end method
