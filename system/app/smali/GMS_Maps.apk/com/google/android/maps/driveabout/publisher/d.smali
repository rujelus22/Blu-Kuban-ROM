.class public Lcom/google/android/maps/driveabout/publisher/d;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/maps/driveabout/publisher/d;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/publisher/d;->a:Lcom/google/android/maps/driveabout/publisher/NavigationEventPublisherService;

    return-object v0
.end method
