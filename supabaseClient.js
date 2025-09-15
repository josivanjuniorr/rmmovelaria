// Configuração do Supabase
import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

export const supabase = createClient(
  'https://oncnehknyafxttztjteu.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9uY25laGtueWFmeHR0enRqdGV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc3MjIzMjEsImV4cCI6MjA3MzI5ODMyMX0.qtqZAi48XqokjQOSn6hFcgVZZRlBk9UcFLeUJjTcA98'
);
