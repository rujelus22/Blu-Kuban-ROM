.class final Lcom/google/android/marvin/talkback/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/a;->a:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a;->a:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->a(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/a;->a:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->b(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V

    return-void
.end method
