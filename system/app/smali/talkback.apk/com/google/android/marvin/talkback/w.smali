.class final Lcom/google/android/marvin/talkback/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/PlayableListPreference;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/PlayableListPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/w;->a:Lcom/google/android/marvin/talkback/PlayableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/talkback/w;->a:Lcom/google/android/marvin/talkback/PlayableListPreference;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/PlayableListPreference;->a(Lcom/google/android/marvin/talkback/PlayableListPreference;)V

    return-void
.end method
